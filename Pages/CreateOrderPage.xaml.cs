using IsArtOrders.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace IsArtOrders.Pages
{
    /// <summary>
    /// Логика взаимодействия для CreateOrderPage.xaml
    /// </summary>
    public partial class CreateOrderPage : Page
    {
        Orders order;
        Orderers user;
        DbOrdersEntities context = DbOrdersEntities.GetContext();
        public CreateOrderPage(Orderers user)
        {
            this.user = user;
            InitializeComponent();
            order = new Orders();
            order.Order_OrdererId = user.OrdererId;
            DataContext = order;
            cboxCategory.ItemsSource = context.Categories.ToList();
            cboxCategory.SelectedValuePath = "CategoryId";
            cboxCategory.DisplayMemberPath = "CategoryName";
        }

        private void btnPutOrder_Click(object sender, RoutedEventArgs e)
        {
            if (order != null)
            {
                order.Order_Status = context.OrderStatus.First(x => x.Status_Name == "В процессе").StatusId;
                context.Orders.Add(order);
                context.SaveChanges();
                MessageBox.Show("Заказ отправлен");
            }
        }
    }
}

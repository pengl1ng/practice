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
    /// Логика взаимодействия для ClientOrders.xaml
    /// </summary>
    public partial class ClientOrders : Page
    {
        DbOrdersEntities context = DbOrdersEntities.GetContext();
        public ClientOrders(Orderers user)
        {
            InitializeComponent();
            lvOrders.ItemsSource = context.Orders.Where(x => x.Order_OrdererId == user.OrdererId).ToList();
        }
    }
}

using IsArtOrders.Helpers;
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
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Page
    {
        Orderers user;
        public ClientPage(Orderers user)
        {
            this.user = user;
            InitializeComponent();
            AppHelper.ClientFrame = _ClientFrame;
            tblockFIO.Text = $"{tblockFIO.Text}\n{user.Orderer_Surname} {user.Orderer_Name} {user.Orderer_Patronimyc}";
        }

        private void btnUnLog_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.MainFrame.GoBack();
        }

        private void btnMyOrders_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.ClientFrame.Navigate(new ClientOrders(user));
        }

        private void btnCreateOrder_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.ClientFrame.Navigate(new CreateOrderPage(user));
        }

        private void btnChangeData_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.ClientFrame.Navigate(new UserSettings(user));
        }
    }
}

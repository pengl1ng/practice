using IsArtOrders.Helpers;
using IsArtOrders.Pages;
using System.Windows;

namespace IsArtOrders
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        /// <summary>
        /// Переадресация на страницу авторизации
        /// </summary>
        public MainWindow()
        {
            InitializeComponent();
            AppHelper.MainFrame = _MainFrame;
            AppHelper.MainFrame.Navigate(new AuthorizationPage());
        }
    }
}

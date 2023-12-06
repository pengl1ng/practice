using IsArtOrders.Helpers;
using IsArtOrders.Models;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace IsArtOrders.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void btnAuth_Click(object sender, RoutedEventArgs e)
        {
            if (tboxEmail.Text != "" && passBox.Password != "")
            {
                try
                {
                    var user = DbOrdersEntities.GetContext().Orderers.FirstOrDefault(x => x.Orderer_Email == tboxEmail.Text && x.Orderer_Password == passBox.Password);
                    if (user != null)
                    {
                        MessageBox.Show("Заказчик авторизован");
                        AppHelper.MainFrame.Navigate(new ClientPage(user));
                    }
                    else
                    {
                        var emp = DbOrdersEntities.GetContext().Employees.FirstOrDefault(x => x.Emp_Email == tboxEmail.Text && x.Emp_Password == passBox.Password);
                        if (emp != null)
                        {
                            MessageBox.Show("Сотрудник авторизован");
                        }
                        else
                        {
                            MessageBox.Show("Такого пользователя или сотрудника не существует");
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            else
            {
                MessageBox.Show("Поля не должны быть пустыми");
            }
        }

        private void btnToReg_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.MainFrame.Navigate(new RegistrationPage());
        }
    }
}

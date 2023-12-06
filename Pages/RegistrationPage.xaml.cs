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
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        Orderers orderer;
        DbOrdersEntities context = DbOrdersEntities.GetContext();
        public RegistrationPage()
        {
            InitializeComponent();
            orderer = new Orderers();
            spReg.DataContext = orderer;
        }

        private void btnReg_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var userExists = DbOrdersEntities.GetContext().Orderers.Where(x => x.Orderer_Email == orderer.Orderer_Email).FirstOrDefault();
                if (userExists == null)
                {
                    if (tboxName.Text.Length > 4 && tboxSurname.Text.Length > 4 && tboxEmail.Text.Length > 4 
                        && tboxPhone.Text.Length > 4 && pbox.Text.Length > 4)
                    {
                        context.Orderers.Add(spReg.DataContext as Orderers);
                        context.SaveChanges();
                        MessageBox.Show("Пользователь успешно зарегистрирован");
                    }
                }
                else
                {
                    MessageBox.Show("Данный пользователь уже существует");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnToAuth_Click(object sender, RoutedEventArgs e)
        {
            AppHelper.MainFrame.GoBack();
        }
    }
}

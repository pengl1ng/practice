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
    /// Логика взаимодействия для UserSettings.xaml
    /// </summary>
    public partial class UserSettings : Page
    {
        DbOrdersEntities context = DbOrdersEntities.GetContext();
        public UserSettings(Orderers user)
        {
            InitializeComponent();
            spEdit.DataContext = user;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                context.SaveChanges();
                MessageBox.Show("Изменения сохранены");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Ошибка");
            }
        }
    }
}

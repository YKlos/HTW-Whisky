using System;
using System.Data;
using System.Web;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;
using System.Data.SqlClient;
using System.Configuration;

namespace HTW_Whisky
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddWhisky_Click(object sender, EventArgs e)
        {
            whiskyTableAdapter WhiskyAdapter = new whiskyTableAdapter();
            WhiskyAdapter.Insert(tbxWhiskyName.Text, tbxAroma.Text,
                                 tbxGeschmack.Text, tbxAbgang.Text,
                                 tbxFasstyp.Text, tbxBeschreibung.Text,
                                 int.Parse(tbxJahrgang.Text), double.Parse(tbxAlkoholgehalt.Text),
                                 double.Parse(tbxLiter.Text), ddlTyp.SelectedIndex, cbxAktiv.Checked);

            int whiskyID = (int)WhiskyAdapter.GetIdByParams(tbxWhiskyName.Text, tbxAroma.Text, tbxGeschmack.Text,
                                                            tbxAbgang.Text, tbxFasstyp.Text,
                                                            tbxBeschreibung.Text, int.Parse(tbxJahrgang.Text),
                                                            double.Parse(tbxAlkoholgehalt.Text), double.Parse(tbxLiter.Text),
                                                            ddlTyp.SelectedIndex, cbxAktiv.Checked);
            
            //Bilderupload

            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                byte[] imageSize = new byte[FileUpload1.PostedFile.ContentLength];
                HttpPostedFile uploadedImage = FileUpload1.PostedFile;
                uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);

                pictureTableAdapter PictureAdapter = new pictureTableAdapter();
                PictureAdapter.Insert(whiskyID, cbxFreigabe.Checked, imageSize);
            }
        }
    }
}
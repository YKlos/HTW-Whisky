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

            int whiskyID = (int)WhiskyAdapter.GetWhiskyByParams(tbxWhiskyName.Text, tbxAroma.Text,
                                                          tbxGeschmack.Text, tbxAbgang.Text,
                                                          tbxFasstyp.Text, tbxBeschreibung.Text,
                                                          int.Parse(tbxJahrgang.Text), double.Parse(tbxAlkoholgehalt.Text),
                                                          double.Parse(tbxLiter.Text), ddlTyp.SelectedIndex, cbxAktiv.Checked);

            //Bildupload

            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                byte[] imageSize = new byte[FileUpload1.PostedFile.ContentLength];
                HttpPostedFile uploadedImage = FileUpload1.PostedFile;
                uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);


                pictureTableAdapter PictureAdapter = new pictureTableAdapter();
                PictureAdapter.Insert(whiskyID, cbxFreigabe.Checked, cbxAktiv.Checked, imageSize);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            /*
	        // Pfad zum speichern der Bilder festlegen
            string savePath = Request.PhysicalApplicationPath + "images\\";
	        // wenn ein File ausgewählt wurde
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName; // dieser Name sollte eindeutig ein !
                savePath += fileName;
                FileUpload1.SaveAs(savePath);
                bool BitmapOK = true;
                bool GrößeOK = true;
                bool DateigrößeOK = true;
                FileInfo FI = new FileInfo(savePath);
		        // überprüfen ob die Datei eine Bestimmte Dateigröße nicht überschreitet, hier sind es 100 kB
                if (FI.Length > 100 * 1024)
                {
                    DateigrößeOK = false;
                    File.Delete(savePath);
                }
                try
                {
			        // Überprüfen ob die Datei gültiges Bild ist
                    System.Drawing.Bitmap BM = new System.Drawing.Bitmap(savePath);
			        // Breite und Höhe prüfen , hier sind es 400 mal 400 Pixel
                    if (BM.Width > 400 || BM.Height > 400)
                    {
                        GrößeOK = false;
                        BM.Dispose();
                        File.Delete(savePath);
                    }
                }
                catch
                {
                    BitmapOK = false;
                    File.Delete(savePath);
                }
		        // wenn alles OK war dann kann das Bild hier weiterverarbeitet werden, wenn nicht, können entsprechende Fehlermeldungen ausgegben werden
                if (BitmapOK && GrößeOK && DateigrößeOK)
                {
                    Label1.Text = "Hochgeladen!!!!!!!!!!1111einself"; 
                }
            }*/
        }
    }
}
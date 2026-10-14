namespace System.Web.UI.Design;

public class ImageUrlEditor : UrlEditor
{
	protected override string Caption => "Select Image";

	protected override string Filter => "Image Files(*.gif;*.jpg;*.jpeg;*.bmp;*.wmf;*.png)|*.gif;*.jpg;*.jpeg;*.bmp;*.wmf;*.png|All Files(*.*)|*.*|";
}

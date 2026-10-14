namespace System.Web.UI;

public interface IThemeResolutionService
{
	ThemeProvider[] GetAllThemeProviders();

	ThemeProvider GetThemeProvider();

	ThemeProvider GetStylesheetThemeProvider();
}

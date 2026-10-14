using System.Linq;
using Unity;

namespace System.Web.UI.WebControls;

public static class QueryExtensions
{
	public static IQueryable<T> SortBy<T>(this IQueryable<T> source, string sortExpression)
	{
		//IL_0007: Expected Obj, but got I4
		ThrowStub.ThrowNotSupportedException();
		return (IQueryable<T>)0;
	}
}

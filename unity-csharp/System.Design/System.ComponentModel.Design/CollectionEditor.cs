using System.Collections;
using System.Drawing;
using System.Drawing.Design;
using System.Reflection;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace System.ComponentModel.Design;

public class CollectionEditor : UITypeEditor
{
	protected abstract class CollectionForm : Form
	{
		private CollectionEditor editor;

		private object editValue;

		protected Type CollectionItemType => editor.CollectionItemType;

		protected Type CollectionType => editor.CollectionType;

		protected ITypeDescriptorContext Context => editor.Context;

		public object EditValue
		{
			get
			{
				return editValue;
			}
			set
			{
				editValue = value;
				OnEditValueChanged();
			}
		}

		protected object[] Items
		{
			get
			{
				return editor.GetItems(editValue);
			}
			set
			{
				if (editValue == null)
				{
					object obj = null;
					try
					{
						obj = ((!typeof(Array).IsAssignableFrom(CollectionType)) ? Activator.CreateInstance(CollectionType) : Array.CreateInstance(CollectionItemType, 0));
					}
					catch
					{
					}
					object obj3 = editor.SetItems(obj, value);
					if (obj3 != obj)
					{
						EditValue = obj3;
					}
				}
				else
				{
					object obj4 = editor.SetItems(editValue, value);
					if (obj4 != editValue)
					{
						EditValue = obj4;
					}
				}
			}
		}

		protected Type[] NewItemTypes => editor.NewItemTypes;

		public CollectionForm(CollectionEditor editor)
		{
			this.editor = editor;
		}

		protected bool CanRemoveInstance(object value)
		{
			return editor.CanRemoveInstance(value);
		}

		protected virtual bool CanSelectMultipleInstances()
		{
			return editor.CanSelectMultipleInstances();
		}

		protected object CreateInstance(Type itemType)
		{
			return editor.CreateInstance(itemType);
		}

		protected void DestroyInstance(object instance)
		{
			editor.DestroyInstance(instance);
		}

		protected virtual void DisplayError(Exception e)
		{
			MessageBox.Show(e.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
		}

		protected override object GetService(Type serviceType)
		{
			return editor.GetService(serviceType);
		}

		protected abstract void OnEditValueChanged();

		protected internal virtual DialogResult ShowEditorDialog(IWindowsFormsEditorService edSvc)
		{
			return edSvc.ShowDialog(this);
		}
	}

	private class ConcreteCollectionForm : CollectionForm
	{
		internal class ObjectContainerConverter : TypeConverter
		{
			private class ObjectContainerPropertyDescriptor : SimplePropertyDescriptor
			{
				private AttributeCollection attributes;

				public override AttributeCollection Attributes => attributes;

				public ObjectContainerPropertyDescriptor(Type componentType, Type propertyType)
					: base(componentType, "Value", propertyType)
				{
					CategoryAttribute categoryAttribute = new CategoryAttribute(propertyType.Name);
					attributes = new AttributeCollection(categoryAttribute);
				}

				public override object GetValue(object component)
				{
					return ((ObjectContainer)component).Object;
				}

				public override void SetValue(object component, object value)
				{
					((ObjectContainer)component).Object = value;
				}
			}

			public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
			{
				ObjectContainer objectContainer = (ObjectContainer)value;
				ObjectContainerPropertyDescriptor objectContainerPropertyDescriptor = new ObjectContainerPropertyDescriptor(value.GetType(), objectContainer.editor.CollectionItemType);
				return new PropertyDescriptorCollection(new PropertyDescriptor[1] { objectContainerPropertyDescriptor });
			}

			public override bool GetPropertiesSupported(ITypeDescriptorContext context)
			{
				return true;
			}
		}

		[TypeConverter(typeof(ObjectContainerConverter))]
		private class ObjectContainer
		{
			internal object Object;

			internal CollectionEditor editor;

			internal string Name => editor.GetDisplayText(Object);

			public ObjectContainer(object obj, CollectionEditor editor)
			{
				Object = obj;
				this.editor = editor;
			}

			public override string ToString()
			{
				return Name;
			}
		}

		private class UpdateableListbox : ListBox
		{
			public void DoRefreshItem(int index)
			{
				base.RefreshItem(index);
			}
		}

		private CollectionEditor editor;

		private Label labelMember;

		private Label labelProperty;

		private UpdateableListbox itemsList;

		private PropertyGrid itemDisplay;

		private Button doClose;

		private Button moveUp;

		private Button moveDown;

		private Button doAdd;

		private Button doRemove;

		private Button doCancel;

		private ComboBox addType;

		public ConcreteCollectionForm(CollectionEditor editor)
			: base(editor)
		{
			this.editor = editor;
			labelMember = new Label();
			labelProperty = new Label();
			itemsList = new UpdateableListbox();
			itemDisplay = new PropertyGrid();
			doClose = new Button();
			moveUp = new Button();
			moveDown = new Button();
			doAdd = new Button();
			doRemove = new Button();
			doCancel = new Button();
			addType = new ComboBox();
			SuspendLayout();
			labelMember.Location = new Point(12, 9);
			labelMember.Size = new Size(55, 13);
			labelMember.Text = "Members:";
			labelProperty.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
			labelProperty.Location = new Point(172, 9);
			labelProperty.Size = new Size(347, 13);
			labelProperty.Text = "Properties:";
			itemsList.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
			itemsList.HorizontalScrollbar = true;
			itemsList.Location = new Point(12, 25);
			itemsList.SelectionMode = SelectionMode.MultiExtended;
			itemsList.Size = new Size(120, 290);
			itemsList.TabIndex = 0;
			itemsList.SelectedIndexChanged += itemsList_SelectedIndexChanged;
			itemDisplay.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
			itemDisplay.HelpVisible = false;
			itemDisplay.Location = new Point(175, 25);
			itemDisplay.Size = new Size(344, 314);
			itemDisplay.TabIndex = 6;
			itemDisplay.PropertyValueChanged += itemDisplay_PropertyValueChanged;
			doClose.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
			doClose.Location = new Point(341, 345);
			doClose.Size = new Size(86, 26);
			doClose.TabIndex = 7;
			doClose.Text = "OK";
			doClose.Click += doClose_Click;
			moveUp.Location = new Point(138, 25);
			moveUp.Size = new Size(31, 28);
			moveUp.TabIndex = 4;
			moveUp.Enabled = false;
			moveUp.Text = "Up";
			moveUp.Click += moveUp_Click;
			moveDown.Location = new Point(138, 59);
			moveDown.Size = new Size(31, 28);
			moveDown.TabIndex = 5;
			moveDown.Enabled = false;
			moveDown.Text = "Dn";
			moveDown.Click += moveDown_Click;
			doAdd.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
			doAdd.Location = new Point(12, 346);
			doAdd.Size = new Size(59, 25);
			doAdd.TabIndex = 1;
			doAdd.Text = "Add";
			doAdd.Click += doAdd_Click;
			doRemove.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
			doRemove.Location = new Point(77, 346);
			doRemove.Size = new Size(55, 25);
			doRemove.TabIndex = 2;
			doRemove.Text = "Remove";
			doRemove.Click += doRemove_Click;
			doCancel.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
			doCancel.DialogResult = DialogResult.Cancel;
			doCancel.Location = new Point(433, 345);
			doCancel.Size = new Size(86, 26);
			doCancel.TabIndex = 8;
			doCancel.Text = "Cancel";
			doCancel.Click += doCancel_Click;
			addType.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
			addType.DropDownStyle = ComboBoxStyle.DropDownList;
			addType.Location = new Point(12, 319);
			addType.Size = new Size(120, 21);
			addType.TabIndex = 3;
			AcceptButton = doClose;
			CancelButton = doCancel;
			ClientSize = new Size(531, 381);
			ControlBox = false;
			Controls.Add(addType);
			Controls.Add(doCancel);
			Controls.Add(doRemove);
			Controls.Add(doAdd);
			Controls.Add(moveDown);
			Controls.Add(moveUp);
			Controls.Add(doClose);
			Controls.Add(itemDisplay);
			Controls.Add(itemsList);
			Controls.Add(labelProperty);
			Controls.Add(labelMember);
			HelpButton = true;
			MaximizeBox = false;
			MinimizeBox = false;
			MinimumSize = new Size(400, 300);
			ShowInTaskbar = false;
			StartPosition = FormStartPosition.CenterScreen;
			ResumeLayout(performLayout: false);
			if (editor.CollectionType.IsGenericType)
			{
				Text = editor.CollectionItemType.Name + " Collection Editor";
			}
			else
			{
				Text = editor.CollectionType.Name + " Collection Editor";
			}
			Type[] newItemTypes = editor.NewItemTypes;
			foreach (Type type in newItemTypes)
			{
				addType.Items.Add(type.Name);
			}
			if (addType.Items.Count > 0)
			{
				addType.SelectedIndex = 0;
			}
		}

		private void UpdateItems()
		{
			object[] items = editor.GetItems(EditValue);
			if (items != null)
			{
				itemsList.BeginUpdate();
				itemsList.Items.Clear();
				object[] array = items;
				foreach (object obj in array)
				{
					itemsList.Items.Add(new ObjectContainer(obj, editor));
				}
				if (itemsList.Items.Count > 0)
				{
					itemsList.SelectedIndex = 0;
				}
				itemsList.EndUpdate();
			}
		}

		private void doClose_Click(object sender, EventArgs e)
		{
			SetEditValue();
			Close();
		}

		private void SetEditValue()
		{
			object[] array = new object[itemsList.Items.Count];
			for (int i = 0; i < itemsList.Items.Count; i++)
			{
				array[i] = ((ObjectContainer)itemsList.Items[i]).Object;
			}
			Items = array;
		}

		private void doCancel_Click(object sender, EventArgs e)
		{
			editor.CancelChanges();
			Close();
		}

		private void itemsList_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (itemsList.SelectedIndex == -1)
			{
				itemDisplay.SelectedObject = null;
				return;
			}
			if (itemsList.SelectedIndex <= 0 || itemsList.SelectedItems.Count > 1)
			{
				moveUp.Enabled = false;
			}
			else
			{
				moveUp.Enabled = true;
			}
			if (itemsList.SelectedIndex > itemsList.Items.Count - 2 || itemsList.SelectedItems.Count > 1)
			{
				moveDown.Enabled = false;
			}
			else
			{
				moveDown.Enabled = true;
			}
			if (itemsList.SelectedItems.Count == 1)
			{
				ObjectContainer objectContainer = (ObjectContainer)itemsList.SelectedItem;
				if (Type.GetTypeCode(objectContainer.Object.GetType()) != TypeCode.Object)
				{
					itemDisplay.SelectedObject = objectContainer;
				}
				else
				{
					itemDisplay.SelectedObject = objectContainer.Object;
				}
			}
			else
			{
				object[] array = new object[itemsList.SelectedItems.Count];
				for (int i = 0; i < itemsList.SelectedItems.Count; i++)
				{
					if (Type.GetTypeCode(((ObjectContainer)itemsList.SelectedItem).Object.GetType()) != TypeCode.Object)
					{
						array[i] = (ObjectContainer)itemsList.SelectedItems[i];
					}
					else
					{
						array[i] = ((ObjectContainer)itemsList.SelectedItems[i]).Object;
					}
				}
				itemDisplay.SelectedObjects = array;
			}
			labelProperty.Text = ((ObjectContainer)itemsList.SelectedItem).Name + " properties:";
		}

		private void itemDisplay_PropertyValueChanged(object sender, EventArgs e)
		{
			int[] array = new int[itemsList.SelectedItems.Count];
			for (int i = 0; i < itemsList.SelectedItems.Count; i++)
			{
				array[i] = itemsList.Items.IndexOf(itemsList.SelectedItems[i]);
			}
			SetEditValue();
			itemsList.BeginUpdate();
			itemsList.ClearSelected();
			int[] array2 = array;
			foreach (int index in array2)
			{
				itemsList.DoRefreshItem(index);
				itemsList.SetSelected(index, value: true);
			}
			itemsList.SelectedIndex = array[0];
			itemsList.EndUpdate();
		}

		private void moveUp_Click(object sender, EventArgs e)
		{
			if (itemsList.SelectedIndex > 0)
			{
				object selectedItem = itemsList.SelectedItem;
				int selectedIndex = itemsList.SelectedIndex;
				itemsList.Items.RemoveAt(selectedIndex);
				itemsList.Items.Insert(selectedIndex - 1, selectedItem);
				itemsList.SelectedIndex = selectedIndex - 1;
			}
		}

		private void moveDown_Click(object sender, EventArgs e)
		{
			if (itemsList.SelectedIndex <= itemsList.Items.Count - 2)
			{
				object selectedItem = itemsList.SelectedItem;
				int selectedIndex = itemsList.SelectedIndex;
				itemsList.Items.RemoveAt(selectedIndex);
				itemsList.Items.Insert(selectedIndex + 1, selectedItem);
				itemsList.SelectedIndex = selectedIndex + 1;
			}
		}

		private void doAdd_Click(object sender, EventArgs e)
		{
			object obj;
			try
			{
				obj = editor.CreateInstance(editor.NewItemTypes[addType.SelectedIndex]);
			}
			catch (Exception e2)
			{
				DisplayError(e2);
				return;
			}
			itemsList.Items.Add(new ObjectContainer(obj, editor));
			itemsList.SelectedIndex = -1;
			itemsList.SelectedIndex = itemsList.Items.Count - 1;
		}

		private void doRemove_Click(object sender, EventArgs e)
		{
			if (itemsList.SelectedIndex != -1)
			{
				int[] array = new int[itemsList.SelectedItems.Count];
				for (int i = 0; i < itemsList.SelectedItems.Count; i++)
				{
					array[i] = itemsList.Items.IndexOf(itemsList.SelectedItems[i]);
				}
				for (int num = array.Length - 1; num >= 0; num--)
				{
					itemsList.Items.RemoveAt(array[num]);
				}
				itemsList.SelectedIndex = Math.Min(array[0], itemsList.Items.Count - 1);
			}
		}

		protected override void OnEditValueChanged()
		{
			UpdateItems();
		}
	}

	private Type type;

	private Type collectionItemType;

	private Type[] newItemTypes;

	private ITypeDescriptorContext context;

	private IServiceProvider provider;

	private IWindowsFormsEditorService editorService;

	protected Type CollectionItemType => collectionItemType;

	protected Type CollectionType => type;

	protected ITypeDescriptorContext Context => context;

	protected virtual string HelpTopic => "CollectionEditor";

	protected Type[] NewItemTypes => newItemTypes;

	public CollectionEditor(Type type)
	{
		this.type = type;
		collectionItemType = CreateCollectionItemType();
		newItemTypes = CreateNewItemTypes();
	}

	protected virtual void CancelChanges()
	{
	}

	protected virtual bool CanRemoveInstance(object value)
	{
		return true;
	}

	protected virtual bool CanSelectMultipleInstances()
	{
		return true;
	}

	protected virtual CollectionForm CreateCollectionForm()
	{
		return new ConcreteCollectionForm(this);
	}

	protected virtual Type CreateCollectionItemType()
	{
		PropertyInfo[] properties = type.GetProperties();
		foreach (PropertyInfo propertyInfo in properties)
		{
			if (propertyInfo.Name == "Item")
			{
				return propertyInfo.PropertyType;
			}
		}
		return typeof(object);
	}

	protected virtual object CreateInstance(Type itemType)
	{
		object obj = null;
		if (typeof(IComponent).IsAssignableFrom(itemType) && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			obj = designerHost.CreateComponent(itemType);
		}
		if (obj == null)
		{
			obj = TypeDescriptor.CreateInstance(provider, itemType, null, null);
		}
		return obj;
	}

	protected virtual Type[] CreateNewItemTypes()
	{
		return new Type[1] { collectionItemType };
	}

	protected virtual void DestroyInstance(object instance)
	{
		if (instance is IComponent component && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			designerHost.DestroyComponent(component);
		}
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		this.context = context;
		this.provider = provider;
		if (context != null && provider != null)
		{
			editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (editorService != null)
			{
				CollectionForm collectionForm = CreateCollectionForm();
				collectionForm.EditValue = value;
				collectionForm.ShowEditorDialog(editorService);
				return collectionForm.EditValue;
			}
		}
		return base.EditValue(context, provider, value);
	}

	protected virtual string GetDisplayText(object value)
	{
		if (value == null)
		{
			return string.Empty;
		}
		PropertyInfo property = value.GetType().GetProperty("Name");
		if (property != null && property.GetValue(value, null) is string { Length: not 0 } text)
		{
			return text;
		}
		if (Type.GetTypeCode(value.GetType()) == TypeCode.Object)
		{
			return value.GetType().Name;
		}
		return value.ToString();
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	protected virtual object[] GetItems(object editValue)
	{
		if (editValue == null)
		{
			return new object[0];
		}
		if (!(editValue is ICollection collection))
		{
			return new object[0];
		}
		object[] array = new object[collection.Count];
		collection.CopyTo(array, 0);
		return array;
	}

	protected virtual IList GetObjectsFromInstance(object instance)
	{
		return new ArrayList { instance };
	}

	protected object GetService(Type serviceType)
	{
		return context.GetService(serviceType);
	}

	protected virtual object SetItems(object editValue, object[] value)
	{
		IList list = (IList)editValue;
		if (list == null)
		{
			return null;
		}
		list.Clear();
		foreach (object value2 in value)
		{
			list.Add(value2);
		}
		return list;
	}

	protected virtual void ShowHelp()
	{
		Help.ShowHelp(null, "", HelpTopic);
	}
}

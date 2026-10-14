.class public final Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "icon",
        "Landroid/widget/ImageView;",
        "name",
        "Landroid/widget/TextView;",
        "root",
        "Landroid/view/View;",
        "selectBgColor",
        "",
        "selectDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "selectTextColor",
        "unselectBgColor",
        "unselectDrawable",
        "unselectTextColor",
        "setSelectEnable",
        "",
        "selectEnable",
        "",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "context.obtainStyledAttr\u2026, R.styleable.backup_tab)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_select_drawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_unselect_drawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->b:Landroid/graphics/drawable/Drawable;

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_select_textColor:I

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->c:I

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_unselect_textColor:I

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->d:I

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_unselect_bg:I

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->f:I

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_select_bg:I

    const-string v1, "#FF0087FB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->e:I

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_tab_name:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$styleable;->backup_tab_select_enable:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcn/mucang/android/jiakaoyi/k3setting/R$layout;->include_backup_tab_item:I

    const/4 v2, 0x1

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(context).inflate(R.\u2026kup_tab_item, this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->i:Landroid/view/View;

    .line 13
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->h:Landroid/widget/ImageView;

    .line 14
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->name:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.name)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->g:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->setSelectEnable(Z)V

    return-void
.end method


# virtual methods
.method public final setSelectEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->i:Landroid/view/View;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->g:Landroid/widget/TextView;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->i:Landroid/view/View;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->g:Landroid/widget/TextView;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/TabItem;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

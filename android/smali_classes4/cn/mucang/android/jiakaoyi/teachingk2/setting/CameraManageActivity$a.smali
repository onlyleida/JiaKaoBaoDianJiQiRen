.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jky/camera/CameraIntent;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0002J\u001e\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0017R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$CameraItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jky/camera/CameraIntent;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V",
        "strList",
        "",
        "",
        "getResId",
        "",
        "intent",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "teachbase_release"
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
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->b:Ljava/util/List;

    const-string v0, "\u4e0d\u7ed1\u5b9a"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getUsbSerialList()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcn/mucang/android/jky/camera/UsbSerial;

    .line 7
    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/UsbSerial;->getDevBus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USB"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final n(Lcn/mucang/android/jky/camera/CameraIntent;)I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->setting_camera_face:I

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->setting_ic_camera:I

    :goto_0
    return p1
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->u(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->s(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->t(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroid/view/View;)V
    .locals 4

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->usbTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/d0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/d0;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->item_select_usb:I

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->b:Ljava/util/List;

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/d0;->l(Landroid/widget/ListAdapter;)V

    const/4 p1, -0x2

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->P(I)V

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->G(I)V

    .line 6
    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/d0;->B(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;

    invoke-direct {p1, p0, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e0;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroidx/appcompat/widget/d0;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->K(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/c0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/c0;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/d0;->J(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->show()V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;Landroidx/appcompat/widget/d0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p4, "$holder"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$item"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$pop"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->usbTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->b:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p6, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getUsbSerialList()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p6, p6, -0x1

    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jky/camera/UsbSerial;

    invoke-virtual {p0}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 3
    invoke-virtual {p2, p0}, Lcn/mucang/android/jky/camera/CameraIntent;->bindSerial(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p3}, Landroidx/appcompat/widget/d0;->dismiss()V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->usbTv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jky/camera/CameraIntent;)V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;",
            ">;",
            "Lcn/mucang/android/jky/camera/CameraIntent;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->intentTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/android/jky/camera/CameraIntent;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->iconIv:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->n(Lcn/mucang/android/jky/camera/CameraIntent;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    sget-object v0, Lcn/mucang/android/jky/camera/UsbCameraManager;->INSTANCE:Lcn/mucang/android/jky/camera/UsbCameraManager;

    invoke-virtual {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->getUsbSerialList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcn/mucang/android/jky/camera/UsbSerial;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jky/camera/UsbSerial;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/mucang/android/jky/camera/CameraIntent;->getBindSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->usbTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->b:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "NULL"

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemCameraManageBinding;->usbTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/d0;

    invoke-direct {v2, p1, v1, p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/d0;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity;Lcn/mucang/android/jiakaoyi/teachingk2/setting/CameraManageActivity$a;Lcn/mucang/android/jky/camera/CameraIntent;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

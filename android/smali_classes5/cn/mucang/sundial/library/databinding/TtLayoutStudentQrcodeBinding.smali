.class public final Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/a;


# instance fields
.field public final btnQrRefresh:Landroid/widget/FrameLayout;

.field public final gzAppQrCode:Landroid/widget/ImageView;

.field public final gzAppQrCodeTip:Landroid/widget/TextView;

.field public final gzBack:Landroid/widget/LinearLayout;

.field public final gzInvalidAppQrCode:Landroid/widget/TextView;

.field public final gzQrCodeLayout:Landroid/widget/LinearLayout;

.field public final gzRefreshQrcode:Landroid/widget/LinearLayout;

.field public final gzTitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->btnQrRefresh:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzAppQrCode:Landroid/widget/ImageView;

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzAppQrCodeTip:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzBack:Landroid/widget/LinearLayout;

    .line 7
    iput-object p6, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzInvalidAppQrCode:Landroid/widget/TextView;

    .line 8
    iput-object p7, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzQrCodeLayout:Landroid/widget/LinearLayout;

    .line 9
    iput-object p8, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzRefreshQrcode:Landroid/widget/LinearLayout;

    .line 10
    iput-object p9, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->gzTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;
    .locals 11

    .line 1
    sget v0, Lcn/mucang/sundial/library/R$id;->btn_qr_refresh:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_app_qr_code:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    .line 3
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_app_qr_code_tip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 4
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    .line 5
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_invalid_app_qr_code:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 6
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_qr_code_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_2

    .line 7
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_refresh_qrcode:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    .line 8
    sget v0, Lcn/mucang/sundial/library/R$id;->gz_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 9
    new-instance v0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "gzTitle"

    goto :goto_0

    :cond_1
    const-string p0, "gzRefreshQrcode"

    goto :goto_0

    :cond_2
    const-string p0, "gzQrCodeLayout"

    goto :goto_0

    :cond_3
    const-string p0, "gzInvalidAppQrCode"

    goto :goto_0

    :cond_4
    const-string p0, "gzBack"

    goto :goto_0

    :cond_5
    const-string p0, "gzAppQrCodeTip"

    goto :goto_0

    :cond_6
    const-string p0, "gzAppQrCode"

    goto :goto_0

    :cond_7
    const-string p0, "btnQrRefresh"

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;
    .locals 2

    .line 2
    sget v0, Lcn/mucang/sundial/library/R$layout;->tt__layout_student_qrcode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->bind(Landroid/view/View;)Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/databinding/TtLayoutStudentQrcodeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

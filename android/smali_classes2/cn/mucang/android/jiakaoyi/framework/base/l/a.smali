.class public Lcn/mucang/android/jiakaoyi/framework/base/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/widget/Toast;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->b:Landroid/os/Handler;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/base/l/a$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->a:Landroid/widget/Toast;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xbb8

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    div-double/2addr v2, v4

    const-wide v4, 0x40a7700000000000L    # 3000.0

    cmpg-double p0, v2, v4

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    double-to-int v1, v2

    :goto_0
    return v1
.end method

.method private static c(Ljava/lang/String;I)Landroid/view/View;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$layout;->view_custom_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$id;->txt_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p0, Lcn/mucang/android/jiakaoyi/framework/R$id;->iv_icon:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-lez p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3
    :cond_0
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->a:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->a:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->c(Ljava/lang/String;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->a:Landroid/widget/Toast;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->b:Landroid/os/Handler;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->b:Landroid/os/Handler;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->c:Ljava/lang/Runnable;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->b(Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

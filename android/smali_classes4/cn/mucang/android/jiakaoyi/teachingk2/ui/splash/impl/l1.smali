.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# instance fields
.field private final i:I

.field private final j:I

.field private final k:Lcn/mucang/jiakaoyi/uilib/unityres/a$b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;",
            "II)V"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->a:I

    if-ne p4, v0, :cond_0

    const-string v0, "Unity\u5305"

    goto :goto_0

    :cond_0
    const-string v0, "Unity\u8d44\u6e90"

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->k:Lcn/mucang/jiakaoyi/uilib/unityres/a$b;

    .line 3
    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->i:I

    .line 4
    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->j:I

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->j:I

    return p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->p()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->f()V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic n()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->i:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->k:Lcn/mucang/jiakaoyi/uilib/unityres/a$b;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->h(ILcn/mucang/jiakaoyi/uilib/unityres/a$b;)V

    return-void
.end method

.method private p()V
    .locals 9

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->i:I

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "Unity\u5305\u52a0\u8f7d\u5931\u8d25"

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->b:I

    if-ne v0, v1, :cond_1

    const-string v0, "Unity\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_contact_official:I

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->mc_contact_number:I

    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_retry:I

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/y0;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/y0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x0;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/x0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->i:I

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->a:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_unity_pkg:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->b:I

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_unity_res:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->j:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/z0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/z0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->j(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->l(Landroid/view/View;)V

    return-void
.end method

.method public synthetic o()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l1;->n()V

    return-void
.end method

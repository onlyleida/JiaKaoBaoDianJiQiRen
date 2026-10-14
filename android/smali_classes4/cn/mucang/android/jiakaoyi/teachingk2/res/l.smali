.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    return-void
.end method

.method static synthetic e(Landroid/view/View;)V
    .locals 1

    const-string p0, "ResFail"

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/l;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/b;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/res/d;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/l;)V

    const/4 v8, 0x0

    const-string v3, "\u8bf7\u786e\u8ba4\u76f8\u5173\u8d44\u6e90\u662f\u5426\u4e0a\u4f20\u5b8c\u6210"

    const-string v4, "\u5173\u95ed"

    const-string v6, "\u91cd\u8bd5"

    move-object v1, v9

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, p1, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;-><init>()V

    .line 2
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;->process:F

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_0
    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/l;->c()V

    return-void
.end method

.method public synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/l;->f(Landroid/view/View;)V

    return-void
.end method

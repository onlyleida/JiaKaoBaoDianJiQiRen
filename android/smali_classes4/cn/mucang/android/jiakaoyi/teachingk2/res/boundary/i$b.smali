.class Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8003\u573a\u5207\u6362\u65f6\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->c()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v5, 0x0

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/c;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;)V

    const/4 v8, 0x0

    const-string v3, "\u8bf7\u786e\u8ba4\u76f8\u5173\u8d44\u6e90\u662f\u5426\u4e0a\u4f20\u5b8c\u6210"

    const-string v4, "\u5173\u95ed"

    const-string v6, "\u91cd\u8bd5"

    move-object v1, v9

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, p1, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;

    const-string v2, "%"

    const/high16 v3, 0x42c80000    # 100.0f

    const-string v4, "\u52a0\u8f7d\u4e2d..."

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v6, p1, v3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v3, v3, p1

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->c()V

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_site_switch_end:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    const-string v1, "\u8003\u573a\u5207\u6362\u5b8c\u6210"

    .line 8
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;-><init>()V

    .line 11
    iput p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResLoadModel;->process:F

    .line 12
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    if-ltz v0, :cond_3

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    :cond_3
    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->d()V

    return-void
.end method

.method public synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/boundary/i$b;->f(Landroid/view/View;)V

    return-void
.end method

.class public Lcn/mucang/android/account/activity/o1/c;
.super Lcn/mucang/android/account/activity/o1/g;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/account/g/c;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/g;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/c;

    invoke-direct {p1}, Lcn/mucang/android/account/g/c;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/c;->b:Lcn/mucang/android/account/g/c;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/activity/o1/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/account/activity/o1/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/account/activity/o1/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/account/activity/o1/c;)Lcn/mucang/android/account/g/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/c;->b:Lcn/mucang/android/account/g/c;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/account/activity/o1/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/c;->m(Landroid/app/Activity;)V

    return-void
.end method

.method private m(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u83b7\u53d6\u8bed\u97f3\u9a8c\u8bc1\u7801"

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "\u6211\u4eec\u5c06\u4ee5\u8bed\u97f3\u7535\u8bdd\u7684\u5f62\u5f0f\u544a\u77e5\u60a8\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7559\u610f\u63a5\u542c\u5466~"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    const-string v1, "\u77e5\u9053\u4e86"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "__open_id__"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/activity/o1/c;->c:Ljava/lang/String;

    const-string v0, "__union_id__"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/account/activity/o1/c;->d:Ljava/lang/String;

    const-string v0, "__third_party__"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/c;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/account/activity/o1/c;->c:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/mucang/android/account/activity/o1/c;->e:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "\u975e\u6cd5\u7684\u7ed1\u5b9a\u8bf7\u6c42"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/activity/ValidationActivity;->z()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const-string p1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcn/mucang/android/account/activity/o1/c$a;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u9a8c\u8bc1"

    invoke-direct {v0, p0, v1, v2, p1}, Lcn/mucang/android/account/activity/o1/c$a;-><init>(Lcn/mucang/android/account/activity/o1/c;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/activity/ValidationActivity;->z()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const-string p1, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcn/mucang/android/account/activity/o1/c$b;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u9a8c\u8bc1\u7801"

    invoke-direct {v0, p0, v1, v2, p1}, Lcn/mucang/android/account/activity/o1/c$b;-><init>(Lcn/mucang/android/account/activity/o1/c;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/account/activity/o1/c$c;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v2

    const-string v3, "\u63d0\u4ea4\u9a8c\u8bc1"

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/account/activity/o1/c$c;-><init>(Lcn/mucang/android/account/activity/o1/c;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.class public Lcn/mucang/android/jiakaoyi/framework/utils/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lf/a/a/a/j/b;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "StartForResult"

    const-string p2, "Activity is null or has finished"

    .line 3
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lf/a/a/a/j/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->a:Lf/a/a/a/j/b;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lf/a/a/a/j/b;

    invoke-direct {p2}, Lf/a/a/a/j/b;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->a:Lf/a/a/a/j/b;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->a:Lf/a/a/a/j/b;

    const-string v1, "__start_for_result"

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/e0;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/e0;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/e0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public c(Landroid/content/Intent;ILf/a/a/a/j/c;)V
    .locals 2

    const-string v0, "StartForResult"

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v1, "RequestCode should in >0 and listener should not be null"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->a:Lf/a/a/a/j/b;

    if-nez v1, :cond_2

    const-string p1, "Please check you activity state"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_2
    invoke-virtual {v1, p3}, Lf/a/a/a/j/b;->a(Lf/a/a/a/j/c;)V

    .line 5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/e0;->a:Lf/a/a/a/j/b;

    invoke-virtual {p3, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

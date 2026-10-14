.class public Lf/a/a/a/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lf/a/a/a/n/a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Permissions"

    .line 2
    iput-object v0, p0, Lf/a/a/a/n/b;->a:Ljava/lang/String;

    const-string v0, "__permissions_"

    .line 3
    iput-object v0, p0, Lf/a/a/a/n/b;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/a/n/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lf/a/a/a/n/a;

    iput-object v0, p0, Lf/a/a/a/n/b;->c:Lf/a/a/a/n/a;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lf/a/a/a/n/a;

    invoke-direct {v0}, Lf/a/a/a/n/a;-><init>()V

    iput-object v0, p0, Lf/a/a/a/n/b;->c:Lf/a/a/a/n/a;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/a/n/b;->c:Lf/a/a/a/n/a;

    iget-object v2, p0, Lf/a/a/a/n/b;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lf/a/a/a/n/b;
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/a/n/b;

    invoke-direct {v0, p0}, Lf/a/a/a/n/b;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public varargs b(Lf/a/a/a/n/c/a;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/n/b;->c:Lf/a/a/a/n/a;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/a/n/b;->a:Ljava/lang/String;

    const-string p2, "Please check you activity state"

    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lf/a/a/a/n/a;->c(Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    return-void
.end method

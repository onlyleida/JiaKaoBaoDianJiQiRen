.class public final Lcom/blankj/utilcode/util/PermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/PermissionUtils$e;,
        Lcom/blankj/utilcode/util/PermissionUtils$b;,
        Lcom/blankj/utilcode/util/PermissionUtils$d;,
        Lcom/blankj/utilcode/util/PermissionUtils$c;,
        Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/blankj/utilcode/util/PermissionUtils;

.field private static l:Lcom/blankj/utilcode/util/PermissionUtils$d;

.field private static m:Lcom/blankj/utilcode/util/PermissionUtils$d;


# instance fields
.field private a:Lcom/blankj/utilcode/util/PermissionUtils$c;

.field private b:Lcom/blankj/utilcode/util/PermissionUtils$d;

.field private c:Lcom/blankj/utilcode/util/PermissionUtils$b;

.field private d:Lcom/blankj/utilcode/util/PermissionUtils$e;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->l()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a()Lcom/blankj/utilcode/util/PermissionUtils$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->m:Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-object v0
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/PermissionUtils$d;)Lcom/blankj/utilcode/util/PermissionUtils$d;
    .locals 0

    .line 1
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->m:Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-object p0
.end method

.method static synthetic c()Lcom/blankj/utilcode/util/PermissionUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->k:Lcom/blankj/utilcode/util/PermissionUtils;

    return-object v0
.end method

.method static synthetic d(Lcom/blankj/utilcode/util/PermissionUtils;)Lcom/blankj/utilcode/util/PermissionUtils$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Lcom/blankj/utilcode/util/PermissionUtils$e;

    return-object p0
.end method

.method static synthetic e(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->u(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/blankj/utilcode/util/PermissionUtils;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->x(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic h(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->w(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic i(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->t(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic j()Lcom/blankj/utilcode/util/PermissionUtils$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/PermissionUtils;->l:Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-object v0
.end method

.method static synthetic k(Lcom/blankj/utilcode/util/PermissionUtils$d;)Lcom/blankj/utilcode/util/PermissionUtils$d;
    .locals 0

    .line 1
    sput-object p0, Lcom/blankj/utilcode/util/PermissionUtils;->l:Lcom/blankj/utilcode/util/PermissionUtils$d;

    return-object p0
.end method

.method public static l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    .line 2
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private n(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static o(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static p()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static r(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->r(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private t(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->n(Landroid/app/Activity;)V

    .line 2
    invoke-direct {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->v()V

    return-void
.end method

.method private u(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:Lcom/blankj/utilcode/util/PermissionUtils$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils;->n(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:Lcom/blankj/utilcode/util/PermissionUtils$c;

    new-instance v1, Lcom/blankj/utilcode/util/PermissionUtils$a;

    invoke-direct {v1, p0, p1}, Lcom/blankj/utilcode/util/PermissionUtils$a;-><init>(Lcom/blankj/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils$c;->a(Lcom/blankj/utilcode/util/PermissionUtils$c$a;)V

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:Lcom/blankj/utilcode/util/PermissionUtils$c;

    :cond_2
    return v1
.end method

.method private v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$d;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$d;->b()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$d;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$d;->a()V

    .line 7
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->b:Lcom/blankj/utilcode/util/PermissionUtils$d;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->e:Ljava/util/Set;

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/blankj/utilcode/util/PermissionUtils;->h:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/blankj/utilcode/util/PermissionUtils$b;->b(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/blankj/utilcode/util/PermissionUtils$b;->a(Ljava/util/List;)V

    .line 14
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->c:Lcom/blankj/utilcode/util/PermissionUtils$b;

    .line 15
    :cond_7
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->a:Lcom/blankj/utilcode/util/PermissionUtils$c;

    .line 16
    iput-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->d:Lcom/blankj/utilcode/util/PermissionUtils$e;

    return-void
.end method

.method private static w(Landroid/app/Activity;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->r(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->s()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static x(Landroid/app/Activity;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->r(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->s()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

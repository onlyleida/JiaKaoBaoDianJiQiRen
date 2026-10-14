.class public Lcn/mucang/android/download/ui/DownloadListActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcn/mucang/android/download/ui/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/download/client/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/download/ui/DownloadListActivity$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/download/ui/DownloadListActivity$c;-><init>(Lcn/mucang/android/download/ui/DownloadListActivity;)V

    iput-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->e:Lcn/mucang/android/download/client/a;

    return-void
.end method

.method static synthetic g(Lcn/mucang/android/download/ui/DownloadListActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/download/ui/DownloadListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic i(Lcn/mucang/android/download/ui/DownloadListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/download/ui/DownloadListActivity;->l()V

    return-void
.end method

.method static synthetic j(Lcn/mucang/android/download/ui/DownloadListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic k(Lcn/mucang/android/download/ui/DownloadListActivity;)Lcn/mucang/android/download/ui/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->b:Lcn/mucang/android/download/ui/a;

    return-object p0
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/download/ui/a;

    iget-object v1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->d:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcn/mucang/android/download/ui/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->b:Lcn/mucang/android/download/ui/a;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4e0b\u8f7d\u5217\u8868"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/download/R$layout;->dm__download_list_activity:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    sget p1, Lcn/mucang/android/framework/download/R$id;->list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->a:Landroid/widget/ListView;

    .line 4
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$f;

    invoke-direct {v0}, Lcn/mucang/android/download/client/DownloadManager$f;-><init>()V

    const/16 v1, 0x11f

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager$f;->b(I)Lcn/mucang/android/download/client/DownloadManager$f;

    new-instance v1, Lcn/mucang/android/download/ui/DownloadListActivity$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/download/ui/DownloadListActivity$a;-><init>(Lcn/mucang/android/download/ui/DownloadListActivity;)V

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->n(Lcn/mucang/android/download/client/DownloadManager$f;Lcn/mucang/android/download/client/c;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$f;

    invoke-direct {v0}, Lcn/mucang/android/download/client/DownloadManager$f;-><init>()V

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager$f;->b(I)Lcn/mucang/android/download/client/DownloadManager$f;

    new-instance v1, Lcn/mucang/android/download/ui/DownloadListActivity$b;

    invoke-direct {v1, p0}, Lcn/mucang/android/download/ui/DownloadListActivity$b;-><init>(Lcn/mucang/android/download/ui/DownloadListActivity;)V

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->n(Lcn/mucang/android/download/client/DownloadManager$f;Lcn/mucang/android/download/client/c;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->e:Lcn/mucang/android/download/client/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->e(Lcn/mucang/android/download/client/a;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/download/ui/DownloadListActivity;->e:Lcn/mucang/android/download/client/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->c(Lcn/mucang/android/download/client/a;)V

    return-void
.end method

.class public final Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010 \u001a\u00020\u001eR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00120\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\tR\u001d\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00120\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\tR\u0016\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00120\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\t\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "examSiteId",
        "",
        "(J)V",
        "diffCountLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcn/mucang/jiakaoyi/uilib/diff/TabCount;",
        "getDiffCountLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "diffJsonCache",
        "",
        "getExamSiteId",
        "()J",
        "lightAssembleCache",
        "",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
        "lightGroupList",
        "",
        "getLightGroupList",
        "lightList",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "getLightList",
        "lightModelCache",
        "listRouteCache",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "routeListLiveData",
        "getRouteListLiveData",
        "getDiffData",
        "loadLightAssemble",
        "",
        "loadLightOrder",
        "loadRouteList",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:J

.field private final d:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/diff/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->c:J

    .line 2
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->d:Landroidx/lifecycle/z;

    .line 3
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->e:Landroidx/lifecycle/z;

    .line 4
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->f:Landroidx/lifecycle/z;

    .line 5
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->g:Landroidx/lifecycle/z;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->j:Ljava/util/List;

    return-void
.end method

.method private final q()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->c:J

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/diff/j;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->k:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final p()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/diff/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->d:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final r()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->f:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final s()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->e:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final t()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;->g:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final u()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightAssemble$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightAssemble$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadLightOrder$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final w()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadRouteList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel$loadRouteList$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/backup/BackupDiffViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

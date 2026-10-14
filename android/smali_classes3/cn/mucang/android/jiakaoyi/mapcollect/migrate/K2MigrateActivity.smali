.class public final Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0018\u0000 :2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001:B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0002J\u0008\u0010.\u001a\u00020\u0012H\u0016J\u0008\u0010/\u001a\u00020+H\u0014J\u0008\u00100\u001a\u00020+H\u0002J\u0010\u00101\u001a\u00020+2\u0006\u00102\u001a\u00020\'H\u0002J\u0008\u00103\u001a\u00020+H\u0014J\u0008\u00104\u001a\u00020+H\u0014J\u0008\u00105\u001a\u00020+H\u0014J\u001a\u00106\u001a\u0004\u0018\u00010\u00122\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u000f\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u0012\u0012\u0004\u0012\u00020\'0\u0017j\u0008\u0012\u0004\u0012\u00020\'`\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020)8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;",
        "()V",
        "converter",
        "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;",
        "count",
        "",
        "examSiteId",
        "",
        "getExamSiteId",
        "()J",
        "examSiteId$delegate",
        "Lkotlin/Lazy;",
        "gpsBaseId",
        "getGpsBaseId",
        "gpsBaseId$delegate",
        "gpsBaseName",
        "",
        "getGpsBaseName",
        "()Ljava/lang/String;",
        "gpsBaseName$delegate",
        "gpsList",
        "Ljava/util/ArrayList;",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "Lkotlin/collections/ArrayList;",
        "isChoosing",
        "",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "mapRender",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;",
        "newGps",
        "newLayer",
        "Lcn/mucang/android/jiakaoyi/mapcollect/migrate/MigratePointLayer;",
        "newTempGps",
        "oldGps",
        "oldLayer",
        "posList",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "doInit",
        "",
        "data",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;",
        "getStatName",
        "init",
        "migrate",
        "onClickPoint",
        "pos",
        "onDestroy",
        "onPause",
        "onResume",
        "trimGpsLatLon",
        "d",
        "",
        "n",
        "Companion",
        "mapcollect_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final r:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$a;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private e:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

.field private f:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

.field private final g:Lkotlin/f;

.field private final h:Lkotlin/f;

.field private final i:Lcn/mucang/android/jiakaoyi/signal/c/f/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private final k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private final l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private m:I

.field private n:Z

.field private final o:Lkotlin/f;

.field private p:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

.field private q:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->r:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$gpsBaseId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$gpsBaseId$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->g:Lkotlin/f;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$gpsBaseName$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$gpsBaseName$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->h:Lkotlin/f;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/h;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->i:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$examSiteId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity$examSiteId$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->o:Lkotlin/f;

    return-void
.end method

.method public static synthetic A(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->v(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->O(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->P(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->t(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->u(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->L(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->M(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V

    return-void
.end method

.method private final K()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->b(DD)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\u8bf7\u5148\u9009\u62e9\u539f\u5730\u56fe\u4e0a\u7684\u4e00\u70b9"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 5
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->b(DD)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "\u8bf7\u5728\u539f\u5730\u56fe\u9009\u62e9\u7684\u70b9\u4e0a\u91c7\u96c6\u4e00\u4e2a\u65b0\u7684\u70b9"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u786e\u5b9a\u8fdb\u884c\u57fa\u7ad9\u8fc1\u79fb?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 8
    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;

    invoke-direct {v3, p0, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u6682\u4e0d\u8fc1\u79fb"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$og"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$ng"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p3, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance p4, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/l;

    invoke-direct {p4, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/l;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    const-string p0, "\u6b63\u5728\u8fc1\u79fb..."

    const-string p1, "\u8fc1\u79fb\u9519\u8bef"

    invoke-virtual {p3, p4, p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$og"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ng"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string p0, "\u6ca1\u6709\u6307\u5b9a\u57fa\u7ad9"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/o;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/o;-><init>()V

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->r()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p2, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/o;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/lang/Long;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u8fc1\u79fb\u6210\u529f"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "\u8fc1\u79fb\u5931\u8d25"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final N(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    if-lez v0, :cond_2

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v5, v1, 0x1

    .line 2
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "posList[i]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {v6, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    cmpg-double v8, v6, v3

    if-gez v8, :cond_0

    move v2, v1

    move-wide v3, v6

    :cond_0
    if-lt v5, v0, :cond_1

    move v1, v2

    move-wide v2, v3

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    :goto_1
    const-wide v4, 0x4062c00000000000L    # 150.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_4

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->e:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/g;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private static final O(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->mapPoint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final P(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->n:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    .line 6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->m:I

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    int-to-double v6, v0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 8
    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    int-to-double v6, v0

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 9
    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->newStationPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->gpsTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ecf\u5ea6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->Q(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , \u7eac\u5ea6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->Q(DI)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , \u822a\u5411\u89d2: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    float-to-double v3, v1

    const/4 v1, 0x2

    invoke-direct {p0, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->Q(DI)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , gps\u7c7b\u578b: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final Q(DI)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x66

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final j(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->b:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->b:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 6
    sget p1, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->mapView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/m;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setOnClickListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->chooseNewStation:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->migrate:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/n;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->e:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const v1, -0xff0100

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    .line 11
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/d;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->i:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->n:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const-string p0, "\u6682\u65e0\u9ad8\u7cbe\u5ea6\u5b9a\u4f4d"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->m:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->n:Z

    const/4 p1, 0x0

    const-string v0, "\u6b63\u5728\u91c7\u96c6\u5f53\u524d\u57fa\u7ad9\u70b9..."

    .line 6
    invoke-static {p0, p1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/e;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/e;-><init>(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    const-wide/16 p0, 0x3e8

    invoke-static {v0, p0, p1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final l(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p0, 0x0

    .line 2
    iput-boolean p0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->n:Z

    .line 3
    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 4
    :goto_1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(DDD)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->n:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->K()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/mapcollect/R$id;->mapView:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->e:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->f:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/p;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    :cond_0
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v3

    invoke-interface {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object p0

    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    :cond_1
    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->d:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->N(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method private final r()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->o:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->j(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->q:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->q:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->k(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->q(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u57fa\u7ad9\u8fc1\u79fb"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8003\u573a\u5730\u56fe\u9884\u89c8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/i;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->q:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u5730\u56fe..."

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_0
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/j;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->r()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityK2MapMigrateBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v2, "viewBinding.mapView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 9
    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/f;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;-><init>(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZLcn/mucang/android/jiakaoyi/framework/h/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->p:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->p:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->d()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->i:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->p:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->k()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->p:Lcn/mucang/android/jiakaoyi/mapcollect/render/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/render/g;->l()V

    :goto_0
    return-void
.end method

.method public final s()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->g:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

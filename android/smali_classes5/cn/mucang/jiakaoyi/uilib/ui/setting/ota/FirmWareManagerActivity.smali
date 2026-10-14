.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0013\u0018\u0000 .2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0017H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0002J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\rH\u0002J\u0008\u0010 \u001a\u00020\u0007H\u0016J\u0008\u0010!\u001a\u00020\u0019H\u0014J\u0012\u0010\"\u001a\u00020\u00192\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0008\u0010%\u001a\u00020\u0019H\u0002J\"\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010)H\u0014J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,H\u0002J\u0008\u0010-\u001a\u00020\u0019H\u0002R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;",
        "()V",
        "CHECK_NAME_MAP",
        "",
        "",
        "",
        "getCHECK_NAME_MAP",
        "()Ljava/util/Map;",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "curModel",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;",
        "data",
        "",
        "getData",
        "()Ljava/util/List;",
        "firmwareUpgradeStateCallback",
        "cn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$firmwareUpgradeStateCallback$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$firmwareUpgradeStateCallback$1;",
        "observable",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
        "buildData",
        "",
        "hardwareInfo",
        "checkFileNameForError",
        "",
        "name",
        "checkModule",
        "it",
        "getStatName",
        "init",
        "loadFile",
        "uri",
        "Landroid/net/Uri;",
        "loadFirmwareData",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "onFirmwareUpgradeState",
        "stateModel",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;",
        "openFileSelector",
        "Companion",
        "uilib_release"
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
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/drakeet/multitype/f;

.field private final e:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

.field private final g:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->b:Ljava/util/List;

    const/4 v0, 0x6

    new-array v1, v0, [Lkotlin/Pair;

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MST"

    invoke-static {v3, v4}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SCC"

    invoke-static {v4, v5}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FRT_UTS"

    invoke-static {v4, v5}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v4, 0x5

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "BAK_UTS"

    invoke-static {v5, v6}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v1, v3

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "SFT"

    invoke-static {v0, v3}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x7

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "THR"

    invoke-static {v0, v2}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v4

    .line 9
    invoke-static {v1}, Lkotlin/collections/l0;->k([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->c:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 11
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$adapter$1$1;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$adapter$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/m;-><init>(Lkotlin/jvm/b/l;)V

    .line 12
    const-class v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 13
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 14
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->d:Lcom/drakeet/multitype/f;

    .line 15
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/c;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->e:Landroidx/lifecycle/a0;

    .line 16
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->g:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;

    return-void
.end method

.method private static final A(Landroid/net/Uri;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/d;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-direct {p1, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u70e7\u5199\u6587\u4ef6\u9519\u8bef\uff01\uff01\uff01"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, "content"

    .line 6
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "x.bin"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/o;->f(Ljava/io/InputStream;Ljava/io/File;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v2, "file"

    .line 11
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    :cond_3
    :goto_0
    new-instance p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/l;

    invoke-direct {p0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/l;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final B(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    const-string v0, "\u5f00\u59cb\u62f7\u8d1d\u6587\u4ef6..."

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final C(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    const-string v1, "\u62f7\u8d1d\u6587\u4ef6\u5b8c\u6210,\u5f00\u59cb\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setType(I)V

    .line 4
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->setDownloadFilePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 5
    invoke-static {p1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->g:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;

    invoke-virtual {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->Y(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/k/g0/d;)V

    return-void
.end method

.method private final D()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->d()Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->m(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    :cond_0
    const-class v1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    .line 3
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->e:Landroidx/lifecycle/a0;

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    :cond_1
    return-void
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->m(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    return-void
.end method

.method private final F(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v2, "DebugOta"

    if-ne v0, v1, :cond_0

    const-string p1, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u5f00\u59cb"

    .line 2
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_1

    const-string p1, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25"

    .line 5
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25,\u8bf7\u9000\u51fa\u5e94\u7528\u91cd\u8bd5"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_2

    const-string p1, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u6210\u529f"

    .line 9
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "\u6536\u5230\u56fa\u4ef6\u66f4\u65b0\u5f00\u59cb,\u56fa\u4ef6\u7c7b\u578b\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_PACK_FINISH:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_7

    const-string v0, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u53d1\u5305\u5b8c\u6210\u56de\u8c03"

    .line 15
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    const-string p1, "\u6536\u5230\u56fa\u4ef6\u53d1\u5305\u5b8c\u6210,\u56fa\u4ef6\u7c7b\u578b\uff1a"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 17
    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_a

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    const-string v1, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u66f4\u65b0\u6210\u529f\u56de\u8c03,\u56fa\u4ef6\u7c7b\u578b\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 20
    :cond_a
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    if-ne v0, v1, :cond_d

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v0, v3

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    const-string v1, "\u6536\u5230\u5355\u4e2a\u56fa\u4ef6\u66f4\u65b0\u5931\u8d25\u56de\u8c03,\u56fa\u4ef6\u7c7b\u578b\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->b()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_6
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_7
    return-void
.end method

.method private final G()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->o(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;)V

    return-void
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    return-object p0
.end method

.method public static final synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->F(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method private final m(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->type:I

    const-string v2, "\u4e3b\u63a7\u6a21\u5757"

    .line 4
    iput-object v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->name:Ljava/lang/String;

    .line 5
    iget v2, p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->otaVersion:I

    iput v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->localVersion:I

    .line 6
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;-><init>()V

    const/4 v2, 0x2

    .line 9
    iput v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->type:I

    const-string v2, "OBD\u6a21\u5757"

    .line 10
    iput-object v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->name:Ljava/lang/String;

    .line 11
    iget p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->obdVersion:I

    iput p1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->localVersion:I

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->d:Lcom/drakeet/multitype/f;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final n(Ljava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->c:Ljava/util/Map;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "NULL"

    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    .line 2
    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->T(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, ".bin"

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->T(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method private final o(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->G()V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final q(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/g/a/a;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->state:Landroid/widget/TextView;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->packIndex:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/g/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/g/a/a;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/g/a/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/g/a/a;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->E(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->B(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    return-void
.end method

.method public static synthetic v(Landroid/net/Uri;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->A(Landroid/net/Uri;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    return-void
.end method

.method public static synthetic w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->q(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->C(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method private final z(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget v0, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "\u9009\u62e9\u4e86\u56fa\u4ef6\u7c7b\u578b"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;

    invoke-direct {v0, p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/e;-><init>(Landroid/net/Uri;Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "\u8bf7\u9009\u62e9\u4e00\u4e2a\u56fa\u4ef6"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u673a\u5668\u4eba\u56fa\u4ef6\u7ba1\u7406\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u6a21\u5757\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/k;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/k;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/f;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/f;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->firmwares:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->firmwares:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->D()V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/g/a/a;

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->z(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

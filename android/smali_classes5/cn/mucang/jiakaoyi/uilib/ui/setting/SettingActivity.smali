.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0006R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "clickCount",
        "",
        "getClickCount",
        "()I",
        "setClickCount",
        "(I)V",
        "clickTime",
        "",
        "getClickTime",
        "()J",
        "setClickTime",
        "(J)V",
        "havePermission",
        "",
        "getHavePermission",
        "()Z",
        "havePermission$delegate",
        "Lkotlin/Lazy;",
        "loadType",
        "getLoadType",
        "loadType$delegate",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# static fields
.field public static final f:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;


# instance fields
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

.field private final b:Lkotlin/f;

.field private c:I

.field private d:J

.field private final e:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$loadType$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$loadType$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->b:Lkotlin/f;

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$havePermission$2;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$havePermission$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->e:Lkotlin/f;

    return-void
.end method

.method private final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->e:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;Lcn/mucang/jiakaoyi/uilib/model/PriceModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->s(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;Lcn/mucang/jiakaoyi/uilib/model/PriceModel;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Landroid/content/Context;I)V
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$a;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->t(I)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->u(J)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->g()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5173\u95ed\u5f15\u64ce\u8c03\u8bd5\u6a21\u5f0f"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/u;->a()V

    .line 8
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->t(I)V

    goto :goto_0

    :cond_1
    const-string v0, "\u6253\u5f00\u5f15\u64ce\u8c03\u8bd5\u6a21\u5f0f"

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/u;->c()V

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->t(I)V

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->t(I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->t(I)V

    :goto_1
    return-void
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Ljava/util/List;)V
    .locals 3

    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;->j(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final s(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;Lcn/mucang/jiakaoyi/uilib/model/PriceModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->j()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    if-eqz p2, :cond_3

    .line 2
    iget p0, p2, Lcn/mucang/jiakaoyi/uilib/model/PriceModel;->type:I

    const-string v1, "charge_mode"

    if-ne p0, v0, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6309\u5708\u8ba1\u8d39\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcn/mucang/jiakaoyi/uilib/model/PriceModel;->price:D

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\u5143/\u5708"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 5
    invoke-static {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6309\u5c0f\u65f6\u8ba1\u8d39\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcn/mucang/jiakaoyi/uilib/model/PriceModel;->price:D

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\u5143/\u5c0f\u65f6"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    iget-wide v0, p2, Lcn/mucang/jiakaoyi/uilib/model/PriceModel;->price:D

    double-to-float p2, v0

    const-string v0, "pra_unit_price"

    .line 8
    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;->a()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6536\u8d39\u6a21\u5f0f"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;->i(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;->a()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;->a()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->c:I

    return v0
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bbe\u7f6e\u4e3b\u9875\u9762"

    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->d:J

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/k0;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/k0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u8bbe\u7f6e"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/j0;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/j0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;-><init>()V

    .line 10
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026ingViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;

    .line 12
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;->a()Landroidx/lifecycle/z;

    move-result-object v1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;

    invoke-direct {v2, p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/i0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 13
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;->b(I)V

    const-class p1, Lcn/mucang/jiakaoyi/uilib/model/PriceModel;

    .line 14
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;

    invoke-direct {v1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/h0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/z0;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    .line 15
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public final t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->c:I

    return-void
.end method

.method public final u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingActivity;->d:J

    return-void
.end method

.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "getAdapter",
        "()Lcom/drakeet/multitype/MultiTypeAdapter;",
        "connectionInfos",
        "",
        "Lcn/mucang/jiakaoyi/uilib/socket/debug/DebugGpsConnection;",
        "getConnectionInfos",
        "()Ljava/util/List;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "getObserver",
        "()Landroidx/lifecycle/Observer;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "DebugItemBinder",
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
.field private a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

.field private final b:Lcom/drakeet/multitype/f;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/socket/x/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/jiakaoyi/uilib/socket/x/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->b:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->c:Ljava/util/List;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->d:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;Lcn/mucang/jiakaoyi/uilib/socket/x/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;Lcn/mucang/jiakaoyi/uilib/socket/x/a;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;Lcn/mucang/jiakaoyi/uilib/socket/x/a;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->g()Lcom/drakeet/multitype/f;

    move-result-object p1

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->g()Lcom/drakeet/multitype/f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final g()Lcom/drakeet/multitype/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->b:Lcom/drakeet/multitype/f;

    return-object v0
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9ad8\u7cbe\u5ea6\u65e5\u5fd7"

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/socket/x/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/x/a;

    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    move-result-object p1

    const-string v1, "inflate(layoutInflater)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v3, "\u9ad8\u7cbe\u5ea6\u5b9e\u65f6\u65e5\u5fd7"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/c0;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/c0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity$a;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity$a;-><init>()V

    .line 9
    invoke-virtual {p1, v0, v3}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->b:Lcom/drakeet/multitype/f;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->c:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DebugGpsConnectionActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/GpsDebugInfoActivity;->d:Landroidx/lifecycle/a0;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    .line 13
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

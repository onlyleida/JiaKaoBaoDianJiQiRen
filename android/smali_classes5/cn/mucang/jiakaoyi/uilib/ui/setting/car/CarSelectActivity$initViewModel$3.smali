.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$initViewModel$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$initViewModel$3;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$initViewModel$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$initViewModel$3;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->h(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->t(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    return-void

    :cond_0
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

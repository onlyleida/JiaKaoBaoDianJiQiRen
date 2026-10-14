.class final Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.jiakaoyi.uilib.ui.widget.CommonMainTitleBar$onAttachedToWindow$1$1"
    f = "CommonMainTitleBar.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/widget/c;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->a(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->g()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->a(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v3, v3, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lat:D

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->a(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-wide v5, v5, Lcn/mucang/jiakaoyi/uilib/socket/model/GpsStationInfoModel;->lon:D

    invoke-direct {p1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    .line 6
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v2

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->c(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->stationDistance:Landroid/widget/TextView;

    const-wide v4, 0x40b3880000000000L    # 5000.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    const-string v2, "\u5c0f\u4e8e5\u516c\u91cc"

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v5

    .line 8
    invoke-static {v4, v2, v3}, Lcn/mucang/android/core/utils/n0;->a(ID)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u516c\u91cc"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/CommonMainTitleBar$onAttachedToWindow$1$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/widget/c;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/c;->c(Lcn/mucang/jiakaoyi/uilib/ui/widget/c;)Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/MainTopBinding;->netDelay:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 12
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

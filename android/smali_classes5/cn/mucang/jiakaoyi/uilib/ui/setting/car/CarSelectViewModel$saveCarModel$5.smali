.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
.field final synthetic $byte:B

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;B)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    iput-byte p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;->$byte:B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->a()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->k()Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/y;->c()V

    .line 4
    :goto_0
    iget-byte v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;->$byte:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u8f66\u578b\u5931\u8d25:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$saveCarModel$5;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->n()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getLogInfo()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "\u8bbe\u7f6e\u8f66\u578b\u5931\u8d25 "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    return-void
.end method

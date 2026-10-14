.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder$onBindViewHolder$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;)V
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
.field final synthetic $item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder$onBindViewHolder$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder$onBindViewHolder$3;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder$onBindViewHolder$3;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder$onBindViewHolder$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;->o()Lkotlin/jvm/b/l;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder$onBindViewHolder$3;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;

    invoke-interface {v0, v1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

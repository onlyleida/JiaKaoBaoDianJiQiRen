.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$1;->invoke(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$1;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    return-void
.end method

.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder$onBindViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "checkedId",
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
.field final synthetic $item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder$onBindViewHolder$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder$onBindViewHolder$2;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->noRb:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder$onBindViewHolder$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    const/4 v0, 0x0

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;->headType:I

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->leftRb:I

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder$onBindViewHolder$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    const/4 v0, 0x1

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;->headType:I

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->rightRb:I

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/TurnHeadBinder$onBindViewHolder$2;->$item:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    const/4 v0, 0x2

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;->headType:I

    :cond_2
    :goto_0
    return-void
.end method

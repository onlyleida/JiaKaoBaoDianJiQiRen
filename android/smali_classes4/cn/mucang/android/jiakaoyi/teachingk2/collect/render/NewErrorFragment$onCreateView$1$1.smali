.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "checked",
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
.field final synthetic $entity:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/widget/CheckBox;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->$entity:Ljava/util/Map$Entry;

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

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->$entity:Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 4
    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorType:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    return-void

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    :goto_1
    if-nez v0, :cond_6

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    .line 7
    :cond_6
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->$entity:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;I)V

    goto :goto_5

    .line 8
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_a

    return-void

    .line 9
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 11
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorType:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment$onCreateView$1$1;->$entity:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method

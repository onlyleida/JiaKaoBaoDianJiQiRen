.class final Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->c(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic$createLogic$logic$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    if-ltz v3, :cond_2

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    .line 4
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-ne v4, v3, :cond_1

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->a(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    :cond_0
    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;->k(Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;ZILjava/lang/Object;)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v6

    :cond_3
    return-void
.end method

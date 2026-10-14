.class final Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic $state:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$2;->$state:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$2;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$2;->$state:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoAssist:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    return-void
.end method

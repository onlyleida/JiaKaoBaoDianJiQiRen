.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->m([ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f0;",
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
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSpecialSafeConfigInfo;"
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
.field final synthetic $desc:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;->$desc:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f0;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f0;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/f0;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;->$desc:Ljava/lang/String;

    const-string v0, " : \u5b89\u5168\u53c2\u6570\u8bbe\u7f6e\u6210\u529f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;->$desc:Ljava/lang/String;

    const-string v0, " :\u4e0b\u53d1\u5b89\u5168\u53c2\u6570\u6210\u529f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;->$desc:Ljava/lang/String;

    const-string v0, " : \u5b89\u5168\u53c2\u6570\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$patchSetSafeCoefficient$3;->$desc:Ljava/lang/String;

    const-string v0, " :\u4e0b\u53d1\u5b89\u5168\u53c2\u6570\u5931\u8d25"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

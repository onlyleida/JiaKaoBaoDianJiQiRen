.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->f(ZZLkotlin/jvm/b/a;)V
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
.field final synthetic $open:Z

.field final synthetic $tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->$tip:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->$open:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Z)[B
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->invoke$lambda-0(Z)[B

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda-0(Z)[B
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [B

    xor-int/2addr p0, v0

    const/4 v0, 0x0

    aput-byte p0, v1, v0

    return-object v1
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderOpenSafeModule:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->$open:Z

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/m;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/m;-><init>(Z)V

    invoke-virtual {v0, v1, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$1;->$tip:Ljava/lang/String;

    const-string v1, "\u4e0b\u53d1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

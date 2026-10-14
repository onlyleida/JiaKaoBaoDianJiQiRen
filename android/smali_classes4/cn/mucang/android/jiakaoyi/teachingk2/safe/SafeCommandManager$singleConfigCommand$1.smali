.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->r(BILkotlin/jvm/b/a;)V
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
.field final synthetic $cmd:B

.field final synthetic $value:I


# direct methods
.method constructor <init>(BI)V
    .locals 0

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->$cmd:B

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->$value:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(BI)[B
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->invoke$lambda-0(BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda-0(BI)[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/s;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    ushr-int/lit8 p0, p1, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    int-to-short p0, p0

    and-int/2addr p1, v1

    int-to-short p1, p1

    .line 4
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/com/s;->a(I)I

    move-result p0

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    goto :goto_0

    :cond_2
    int-to-short p0, p1

    .line 8
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    goto :goto_0

    :cond_3
    int-to-byte p0, p1

    .line 9
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->CmdSingleConfig:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->$cmd:B

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->$value:I

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/w;-><init>(BI)V

    invoke-virtual {v0, v1, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u53d1\u8bbe\u7f6e\u53c2\u6570:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->$cmd:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$singleConfigCommand$1;->$value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

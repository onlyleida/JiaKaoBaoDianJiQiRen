.class Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;-><init>()V

    const/16 v1, 0x9c4

    .line 3
    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b;->h(Ljava/io/InputStream;I)Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/t/c/b$a;->a:[B

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "McCommunicator"

    const-string v0, "\u8be5\u4e32\u53e3\u6ca1\u6709\u6709\u6548\u6570\u636e"

    .line 5
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u4e32\u53e3\u6ca1\u6709\u6709\u6548\u6570\u636e"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

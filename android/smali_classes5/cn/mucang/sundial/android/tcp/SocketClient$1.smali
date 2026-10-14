.class Lcn/mucang/sundial/android/tcp/SocketClient$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/SocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Lcn/mucang/sundial/android/tcp/message/RawMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/tcp/SocketClient;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/tcp/SocketClient;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient$1;->this$0:Lcn/mucang/sundial/android/tcp/SocketClient;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/SocketClient$1;->this$0:Lcn/mucang/sundial/android/tcp/SocketClient;

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/SocketClient;->access$000(Lcn/mucang/sundial/android/tcp/SocketClient;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

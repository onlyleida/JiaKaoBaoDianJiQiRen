.class public abstract Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/InputStream;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/m/a;->a:Z

    return v0
.end method

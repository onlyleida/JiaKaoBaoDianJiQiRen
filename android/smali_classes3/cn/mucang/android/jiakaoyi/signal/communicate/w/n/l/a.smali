.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c<",
        "Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/com/v/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/a;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;)Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-object v0
.end method

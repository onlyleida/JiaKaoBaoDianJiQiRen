.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/c<",
        "Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;",
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
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/l/e;->b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;)Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;)Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;->c:Ljava/lang/String;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;->d:I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/d;-><init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-object v0
.end method

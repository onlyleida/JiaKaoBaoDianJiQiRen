.class public Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->Net:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    invoke-direct {p0, v0, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;->c:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/b;->d:I

    return-void
.end method

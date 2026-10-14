.class public Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/c;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;->Serial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;->MasterSerial:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannel;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/c;->c:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/a/c;->d:I

    return-void
.end method

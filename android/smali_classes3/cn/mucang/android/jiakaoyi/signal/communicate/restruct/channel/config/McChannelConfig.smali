.class public Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$a;,
        Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;
    }
.end annotation


# instance fields
.field public a:Lcn/mucang/android/jiakaoyi/signal/com/v/a;

.field public b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/e;

.field public c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

.field public d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/k/f;

.field public e:Z

.field public f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;->V1:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig$McProtocolVersion;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    return-void
.end method

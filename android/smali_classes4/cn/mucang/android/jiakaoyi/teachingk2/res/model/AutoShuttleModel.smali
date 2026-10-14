.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public connectionPoint:Ljava/lang/String;

.field public examSiteId:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AutoShuttleModel;->pos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

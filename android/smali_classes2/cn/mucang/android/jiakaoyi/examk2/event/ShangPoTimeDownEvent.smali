.class public Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    const-string v0, "\u5269\u4f59\u8d77\u6b65\u65f6\u95f4"

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->b:Ljava/lang/String;

    return-void
.end method

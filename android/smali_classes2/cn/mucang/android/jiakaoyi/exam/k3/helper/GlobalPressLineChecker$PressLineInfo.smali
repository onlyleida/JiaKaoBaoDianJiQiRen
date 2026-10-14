.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PressLineInfo"
.end annotation


# instance fields
.field public pressDashLineTime:J

.field public pressDashedLine:Z

.field public pressFullLine:Z

.field public pressFullLineTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressDashLineTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressFullLineTime:J

    return-void
.end method

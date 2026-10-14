.class public Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public calibrationType:I

.field public cmd:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

.field public head:Ljava/lang/String;

.field public isStart:Z

.field public needInputValue:Z

.field public startText:Ljava/lang/String;

.field public stepName:Ljava/lang/String;

.field public tip:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u5f00\u59cb\u6807\u5b9a"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibrationItem;->startText:Ljava/lang/String;

    return-void
.end method

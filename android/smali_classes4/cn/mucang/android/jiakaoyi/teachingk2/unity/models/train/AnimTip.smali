.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/AnimTip;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# static fields
.field public static TYPE_ANGLE:I = 0x5

.field public static TYPE_AREA:I = 0x4

.field public static TYPE_DRAW_LINE:I = 0x6

.field public static TYPE_LINE:I = 0x1

.field public static TYPE_POINT:I = 0x3

.field public static TYPE_RECT:I = 0x2


# instance fields
.field public color:Ljava/lang/String;

.field public duration:I

.field public isOn:Z

.field public offTime:I

.field public onTime:I

.field public positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    return-void
.end method

.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/OpenPageModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# static fields
.field public static PAGE_BASE_DRIVE:I = 0x3

.field public static PAGE_CAR_VIDEO:I = 0x4

.field public static PAGE_EXAM:I = 0x6

.field public static PAGE_EXIT:I = 0x5

.field public static PAGE_MAIN:I = 0x1

.field public static PAGE_PRACTICE:I = 0x2


# instance fields
.field public child:I

.field public data:Ljava/lang/Object;

.field public page:I


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

.class public final enum Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SideLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

.field public static final enum DottedLine:Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

.field public static final enum Empty:Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

.field public static final enum SolidLine:Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    const-string v1, "Empty"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;->Empty:Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    .line 2
    new-instance v1, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    const-string v3, "SolidLine"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;->SolidLine:Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    .line 3
    new-instance v3, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    const-string v5, "DottedLine"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;->DottedLine:Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;->$VALUES:[Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;->$VALUES:[Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    invoke-virtual {v0}, [Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jky/usbcamera/detectside/LinesProcessor$SideLine;

    return-object v0
.end method

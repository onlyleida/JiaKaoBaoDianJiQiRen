.class public final Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/FormatException;
.super Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ReaderException;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/FormatException;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/FormatException;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/FormatException;->INSTANCE:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/FormatException;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ReaderException;->NO_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ReaderException;-><init>()V

    return-void
.end method

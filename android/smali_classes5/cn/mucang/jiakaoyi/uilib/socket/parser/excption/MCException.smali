.class public Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final CODE_CRC_ERROR:I = 0x2

.field public static final CODE_Frame_Handler_Error:I = 0x5

.field public static final CODE_HEADER_ERROR:I = 0x1

.field public static final CODE_LOGIN_AUTH:I = 0x4

.field public static final CODE_LOGIN_FAIL:I = 0x3


# instance fields
.field public code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;->code:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e27\u9519\u8bef\u7801="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/parser/excption/MCException;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

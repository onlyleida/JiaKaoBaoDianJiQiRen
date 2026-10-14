.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

.field private final b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

.field private final c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

.field private final d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/c/c;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/o0;)V
    .locals 1

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classProto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    .line 5
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/metadata/c/c;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/metadata/c/a;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/descriptors/o0;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/c/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassData(nameResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->a:Lkotlin/reflect/jvm/internal/impl/metadata/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classProto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->b:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadataVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->c:Lkotlin/reflect/jvm/internal/impl/metadata/c/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/d;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/o0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

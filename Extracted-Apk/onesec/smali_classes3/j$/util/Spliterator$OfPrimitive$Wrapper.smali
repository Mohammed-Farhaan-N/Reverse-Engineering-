.class public final synthetic Lj$/util/Spliterator$OfPrimitive$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# instance fields
.field final synthetic wrappedValue:Lj$/util/Spliterator$OfPrimitive;


# direct methods
.method private synthetic constructor <init>(Lj$/util/Spliterator$OfPrimitive;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    return-void
.end method

.method public static synthetic convert(Lj$/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;

    iget-object p0, p0, Lj$/util/Spliterator$OfPrimitive$VivifiedWrapper;->wrappedValue:Ljava/util/Spliterator$OfPrimitive;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/Spliterator$OfPrimitive$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/Spliterator$OfPrimitive$Wrapper;-><init>(Lj$/util/Spliterator$OfPrimitive;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public final synthetic estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Lj$/util/Spliterator$OfPrimitive;->trySplit()Lj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfPrimitive$Wrapper;->convert(Lj$/util/Spliterator$OfPrimitive;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/Spliterator$OfPrimitive$Wrapper;->wrappedValue:Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

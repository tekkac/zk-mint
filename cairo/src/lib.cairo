pub mod contract {
    pub mod zkmint;
    pub mod interface;
}

pub mod verifier {
    pub mod groth16_verifier;
    pub mod groth16_verifier_constants;
}

pub mod metadata {
    pub mod base64;
    pub mod json;
    pub mod svg;
}

#[cfg(test)]
pub mod tests {
    pub mod mock_proof;
    pub mod test_zkmint;
}
